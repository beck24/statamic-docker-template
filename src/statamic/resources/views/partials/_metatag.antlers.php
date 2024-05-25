<?php

if (isset($content) && $content !== null) {
  if (isset($type) && $type === "property") {
    ?><meta property="{{name}}" content="{{content}}" /><?php
    } else {
    ?><meta name="{{name}}" content="{{content}}" /><?php
    }
}
?>