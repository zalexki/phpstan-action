This action allows you to run phpstan on a project that may not be compatible with it (php version/composer deps ... or other problems).

This action will use your .php_cs.dist file at the root of your project.  
Default command is `'analyse classes -c /base.neon'`  

You can replace this with the other-cmds param :  
```
      - name: phpstan default
        uses: zalexki/phpstan-action@master
        with:
            other-cmds: 'analyse classes -c /base.neon'
```

TODO:  
- Add directory param
- Fix default cs config
- Support other php cs fixer versions
