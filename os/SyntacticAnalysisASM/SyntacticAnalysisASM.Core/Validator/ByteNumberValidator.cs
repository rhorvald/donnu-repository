﻿using SyntacticAnalysisASM.Core.Abstraction;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SyntacticAnalysisASM.Core.Validator
{
    public class ByteNumberValidator
        : ILexemeValidation
    {
        readonly int _maxValue = 255;

        public bool Validate(IEnumerable<ILexeme> lexemes, IEnumerable<ICodeLine> identificatorsLines)
        {
            string lexemValue = lexemes.ElementAtOrDefault(0)?.Value;

            int number;
            try
            {
                if (lexemValue.Last() == 'h')
                {
                    if (!char.IsDigit(lexemValue.First()))
                        return false;

                    number = int.Parse(lexemValue.TrimEnd('h'), NumberStyles.AllowHexSpecifier);
                }
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
