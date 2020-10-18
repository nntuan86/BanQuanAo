using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;

namespace BanQuanAo.Libraries
{
    public class MyString
    {
        // public string  ToVietAlias(string s)
        // {
        //     String[][] symbols ={
        //                             new String[] { "/(å|ä|ā|à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ|ä|ą)/", "a" },
        // new String[]{ "/(ß|ḃ)/", "b"},
        // new String[]{ "/(ç|ć|č|ĉ|ċ|¢|©)/", "c"},
        // new String[]{ "/(đ|ď|ḋ|đ)/", "d"},
        //new String[]{ "/(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ|ę|ë|ě|ė)/", "e"},
        // new String[]{ "ķ", "k"},
        // new String[]{ "/(ħ|ĥ)/", "h"},
        // new String[]{ "/(ì|í|î|ị|ỉ|ĩ|ï|î|ī|¡|į)/", "i"},
        // new String[]{ "ĵ", "j"},
        // new String[]{ "ṁ", "m"},

        // new String[]{ "/(ö|ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ|ö|ø|ō)/", "o"},
        // new String[]{ "ṗ", "p"},
        // new String[]{ "/(ġ|ģ|ğ|ĝ)/", "g"},
        // new String[]{ "/(ü|ù|ú|ū|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ|ü|ų|ů)/", "u"},
        // new String[]{ "/(ỳ|ý|ỵ|ỷ|ỹ|ÿ)/", "y"},
        // new String[]{ "/(ń|ñ|ň|ņ)/","n"},
        // new String[]{ "/(ŝ|š|ś|ṡ|ș|ş|³)/", "s"},
        // new String[]{ "/(ř|ŗ|ŕ)/", "r"},
        // new String[]{ "/(ṫ|ť|ț|ŧ|ţ)/","t"},

        // new String[] { "/(ź|ż|ž)/", "z"},
        // new String[] { "/(ł|ĺ|ļ|ľ)/", "l"},

        // new String[] { "/(ẃ|ẅ)/", "w"},

        // new String[] { "æ", "ae"},
        // new String[] { "þ", "th"},
        // new String[] { "ð", "dh"},
        // new String[] { "£", "pound"},
        // new String[] { "¥", "yen"},

        // new String[] { "ª", "2"},
        // new String[] { "º", "0"},
        // new String[] { "¿", "?"},

        // new String[] { "µ", "mu"},
        // new String[] { "®", "r"},

        // //thay thế chữ hoa
        // new String[] { "/(Ä|À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ|Ą|Å|Ā)/", "A"},
        // new String[] { "/(Ḃ|B)/", "B"},
        // new String[] { "/(Ç|Ć|Ċ|Ĉ|Č)/", "C"},
        // new String[] { "/(Đ|Ď|Ḋ)/", "D"},
        // new String[] { "/(È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ|Ę|Ë|Ě|Ė|Ē)/", "E"},
        // new String[] { "/(Ḟ|Ƒ)/", "F"},
        // new String[] { "/(Ì|Í|Ị|Ỉ|Ĩ|Ï|Į)/", "I"},
        // new String[] { "/(Ĵ|J)/", "J"},

        // new String[] { "/(Ö|Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ|Ø)/", "O"},
        // new String[] { "/(Ü|Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ|Ū|Ų|Ů)/", "U"},
        // new String[] { "/(Ỳ|Ý|Ỵ|Ỷ|Ỹ|Ÿ)/", "Y"},
        // new String[] { "Ł", "L"},
        // new String[] { "Þ", "Th"},
        // new String[] { "Ṁ", "M"},

        // new String[] { "/(Ń|Ñ|Ň|Ņ)/", "N"},
        // new String[] { "/(Ś|Š|Ŝ|Ṡ|Ș|Ş)/", "S"},
        // new String[] { "Æ", "AE"},
        // new String[] { "/(Ź|Ż|Ž)/", "Z"},

        // new String[] { "/(Ř|R|Ŗ)/", "R"},
        // new String[] { "/(Ț|Ţ|T|Ť)/", "T"},
        // new String[] { "/(Ķ|K)/", "K"},
        // new String[] { "/(Ĺ|Ł|Ļ|Ľ)/", "L"},

        // new String[] { "/(Ħ|Ĥ)/", "H"},
        // new String[] { "/(Ṗ|P)/", "P"},
        // new String[] { "/(Ẁ|Ŵ|Ẃ|Ẅ)/", "W"},
        // new String[] { "/(Ģ|G|Ğ|Ĝ|Ġ)/", "G"},
        // new String[] { "/(Ŧ|Ṫ)/", "T"},
        //                         };
        //     s = s.ToLower();
        //     foreach(var ss in symbols)
        //     {
        //         s = Regex.Replace(s, ss[0], ss[1]);
        //     }
        //     return s;
        // }
        public string ToVietAlias(string s)
        {
            String[][] symbols = {
                                 new String[] { "[áàảãạăắằẳẵặâấầẩẫậ]", "a" },
                                 new String[] { "[đ]", "d" },
                                 new String[] { "[éèẻẽẹêếềểễệ]", "e" },
                                 new String[] { "[íìỉĩị]", "i" },
                                 new String[] { "[óòỏõọôốồổỗộơớờởỡợ]", "o" },
                                 new String[] { "[úùủũụưứừửữự]", "u" },
                                 new String[] { "[ýỳỷỹỵ]", "y" },
                                 new String[] { "[\\s'\";,]", "-" }
                             };
            s = s.ToLower();
            foreach (var ss in symbols)
            {
                s = Regex.Replace(s, ss[0], ss[1]);
            }
            return s;
        }
        public string TOSHA1(string pass)
        {
            var bytes = Encoding.UTF8.GetBytes(pass);
            var hash = SHA1.Create().ComputeHash(bytes);
            return Convert.ToBase64String(hash);
        }
    }
}