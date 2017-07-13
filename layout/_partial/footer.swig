{# Social Links #}
{% include "./_footer/social.swig" %}

<div class="copyright">
  <span class="power-by">
    {{ __('footer.powered', '<a class="hexo-link" href="https://hexo.io/">Hexo</a>') }}
  </span>

  ·

  <span class="theme-info">
    {{ __('footer.theme') }}
    <a class="theme-link" href="https://github.com/SNH48Live/hexo-theme-even">Even</a>
  </span>

  <span class="copyright-year">
    {% set current = date(Date.now(), "YYYY") %}
    &copy;
    {% if theme.since and theme.since != current %}
      {{ theme.since }} -
    {% endif %}
    {{ current }}

    <span class="author">
      <a class="theme-link" href="{{ config.author_link }}">{{ config.author }}</a>
    </span>
  </span>
</div>
