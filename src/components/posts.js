{ excerpt? <></>: <Comment commentBox={commentBox} />}
const commentBox = React.createRef()
const commentBox = React.createRef()

  useEffect(() => {
    const scriptEl = document.createElement('script')
    scriptEl.async = true
    scriptEl.src = 'https://utteranc.es/client.js'
    scriptEl.setAttribute('repo', 'creativcoder/creativcoder.dev-comments')
    scriptEl.setAttribute('issue-term', 'title')
    scriptEl.setAttribute('id', 'utterances')
    scriptEl.setAttribute('theme', 'github-light')
    scriptEl.setAttribute('crossorigin', 'anonymous')
    if (commentBox && commentBox.current) {
      commentBox.current.appendChild(scriptEl)
    } else {
      console.log(`Error adding utterances comments on: ${commentBox}`)
    }
  }, [])
