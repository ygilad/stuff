<!-- :
:: PasswordSubmitter.bat
@echo off
for /f "tokens=* delims=" %%p in ('mshta.exe "%~f0"') do (
    set "pass=%%p"
)

echo your password is %pass%
pause
exit /b
-->

<!-- Taken from https://stackoverflow.com/a/24396149/1853298 -->
<html>
<head><title>Password submitter</title></head>
<body onload='whenLoad()'>

    <script language='javascript' >
        window.resizeTo(400,300);
        function entperPressed(e){
                if (e.keyCode == 13) {
                    pipePass();
                }
        }
        function pipePass() {
            var pass=document.getElementById('pass').value;
            var fso= new ActiveXObject('Scripting.FileSystemObject').GetStandardStream(1);
            close(fso.Write(pass));

        }
        function whenLoad() {
            var pass=document.getElementById('pass').focus();
        }
    </script>

    <input type='password' name='pass' size='15' onkeypress="return entperPressed(event)" ></input>
    <hr>
    <button onclick='pipePass()'>Submit</button>

</body>
</html>
