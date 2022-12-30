#  Moive Sample 


    Bundle.main.path 이 동작하지 않을때
   - Target를 설정하고 Build Phases 탭에서
   - Copy Bundle Resources 항목에 그 파일을 더하기 함
    
```
<code>
        let filePath: String? = Bundle.main.path(forResource: "fishbread", ofType: "mp4")
</code>
```       


유투브 영상의 url을 가져와서 재생을 할 수 없다. 
