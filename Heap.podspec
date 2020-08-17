#
# Be sure to run `pod lib lint Heap.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name                  = 'Heap'
  s.version               = '7.1.2-alpha.1'
  s.summary               = 'Capture everything - iOS analytics library for Heap.'

  s.description           = <<-DESC
Heap is a modern take on analytics. There's no need to ship event tracking
code, no need to wait days or weeks for data to accumulate, no need to muddle
your codebase, and no need to fumble with rigid reports.

For the first time, meaningful product questions can be answered just as soon
as they're asked.
                            DESC
  s.homepage              = 'https://heapanalytics.com'
  s.documentation_url     = 'https://developers.heap.io/docs/ios'
  s.license               = { :type => 'Commercial', :text => 'See https://heapanalytics.com/terms' }
  s.author                = { 'Heap' => 'team@heapanalytics.com' }
  s.source                = { :git => 'https://github.com/heap/heap-ios-sdk.git', :tag => s.version }
  s.social_media_url      = 'https://twitter.com/heap'

  s.source_files          = 'Heap.h'
  s.preserve_paths        = 'CHANGELOG.md', 'libHeap.a'
  s.libraries             = 'icucore'
  s.vendored_libraries    = 'libHeap.a'
  s.requires_arc          = true

  s.frameworks            = 'CFNetwork', 'Security', 'SystemConfiguration', 'UIKit'

  s.platform              = :ios, '10.0'
end