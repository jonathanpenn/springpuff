Pod::Spec.new do |s|
  s.name            = "TISpringLoadedViews"
  s.summary         = "Some UIView subclasses which behave as though they're attached to a spring"
  s.homepage        = "https://github.com/thermogl/TISpringLoadedViews"
  s.author          = "Tom Irving"
  s.source          = { :git => "https://github.com/thermogl/TISpringLoadedViews.git", :commit => "226e6cd5" }
  s.requires_arc    = false

  s.source_files    = 'TISpringLoadedView.{h,m}'

  s.license      = {
    :text => <<-LICENSE
      Copyright (c) 2012 Tom Irving. All rights reserved.

      Redistribution and use in source and binary forms, with or without
      modification, are permitted provided that the following conditions are met:

      1. Redistributions of source code must retain the above copyright notice, this
      list of conditions and the following disclaimer.

      2. Redistributions in binary form must reproduce the above copyright notice,
      this list of conditions and the following disclaimer in the documentation
      and/or other materials provided with the distribution.

      THIS SOFTWARE IS PROVIDED BY TOM IRVING "AS IS" AND ANY EXPRESS OR IMPLIED
      WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
      MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO
      EVENT SHALL TOM IRVING OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
      INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
      LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
      PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
      LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
      OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
      ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
     LICENSE
  }
end
