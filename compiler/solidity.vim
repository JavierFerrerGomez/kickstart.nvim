if exists("current_compiler")
  finish
endif
let current_compiler = "compiler"

let s:cpo_save = &cpo
set cpo&vim

CompilerSet makeprg=npx\ hardhat\ compile\ 
"&&\ \./_lint_contracts.sh
CompilerSet errorformat=%WWarning:\ %m,%C%*[\ ]\-\->\ %f:%l:%c:,%Z%m,
      \%EParserError:\ %m,%C%*[\ ]\-\->\ %f:%l:%c:,%Z%m,
      \%EDeclarationError:\ %m,%C%*[\ ]\-\->\ %f:%l:%c:,%Z%m,
      \%ETypeError:\ %m,%C%*[\ ]\-\->\ %f:%l:%c:,%Z%m,
      \%EJSONError:\ %m,%C%*[\ ]\-\->\ %f:%l:%c:,%Z%m,
      \%EIOError:\ %m,%C%*[\ ]\-\->\ %f:%l:%c:,%Z%m,
      \%EDocstringParsingError:\ %m,%C%*[\ ]\-\->\ %f:%l:%c:,%Z%m,
      \%ESyntaxError:\ %m,%C%*[\ ]\-\->\ %f:%l:%c:,%Z%m,
      \%EUnimplementedFeatureError:\ %m,%C%*[\ ]\-\->\ %f:%l:%c:,%Z%m,
      \%EInternalCompilerError:\ %m,%C%*[\ ]\-\->\ %f:%l:%c:,%Z%m,
      \%EException:\ %m,%C%*[\ ]\-\->\ %f:%l:%c:,%Z%m,
      \%ECompilerError:\ %m,%C%*[\ ]\-\->\ %f:%l:%c:,%Z%m,
      \%EFatalError:\ %m,%C%*[\ ]\-\->\ %f:%l:%c:,%Z%m,
      \%EYulException:\ %m,%C%*[\ ]\-\->\ %f:%l:%c:,%Z%m,
      \%EFatalError:\ %m,%C%*[\ ]\-\->\ %f:%l:%c:,%Z%m,
      \%EInfo:\ %m,%C%*[\ ]\-\->\ %f:%l:%c:,%Z%m,
      \%+P%f,%*[\ ]%l:%c%*[\ ]warning%*[\ ]%m,%-Q,
      \%+P%f,%*[\ ]%l:%c%*[\ ]error%*[\ ]%m,%-Q,

let &cpo = s:cpo_save
unlet s:cpo_save

