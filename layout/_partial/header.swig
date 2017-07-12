<div class="logo-wrapper">
  <img class="logo" src="{{ url_for('img/logo.png') }}" srcset="{{ url_for('img/logo@2x.png') }} 2x, {{ url_for('img/logo@3x.png') }} 3x" alt="logo">
  <a href="{{ url_for('.') }}" class="logo-text">{{ config.title }}</a>
</div>

<nav class="site-navbar">
  {% if theme.menu %}
    <ul id="menu" class="menu">
      {% for name, path in theme.menu %}
        <li class="menu-item">
          <a class="menu-item-link" href="{{ url_for(path) }}">
            {% set itemName = __('menu.' + name.toLowerCase()) %}
            {% if itemName.startsWith('menu') %}
              {{ name }}
            {% else %}
              {{ itemName }}
            {% endif %}
          </a>
        </li>
      {% endfor %}
      {% if theme.theme.search %}
        <li class="menu-search">
          <form>
            <i class="iconfont icon-search" id="open-search"></i>
            <input type="text" class="search-input" id="search-input" />
            <i class="iconfont icon-close" id="close-search"></i>
          </form>
        </li>
      {% endif %}
    </ul>
  {% endif %}
</nav>
