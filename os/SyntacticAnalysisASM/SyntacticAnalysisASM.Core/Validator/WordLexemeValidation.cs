﻿using SyntacticAnalysisASM.Core.Abstraction;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SyntacticAnalysisASM.Core.Validator
{
    public class WordLexemeValidation
        : ILexemeValidation
    {
        readonly int _maxValue = 65535;

        public bool Validate(IEnumerable<ILexeme> lexemes, IEnumerable<ICodeLine> identificatorsLines)
        {
            if (lexemes.ElementAtOrDefault(1)?.Code != 3)
                return false;

            string lexemValue = lexemes.ElementAtOrDefault(2)?.Value;

            int number;
            try
            {
                if (lexemValue.Last() == 'h')
                    number = int.Parse(lexemValue.TrimEnd('h'), NumberStyles.AllowHexSpecifier);
                else
                    number = int.Parse(lexemValue, NumberStyles.Integer);
                //TODO: BINARY 



                if (number > _maxValue)
                    return false;

                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}