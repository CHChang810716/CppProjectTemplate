#include <boost/filesystem.hpp>
#include <opencv2/opencv.hpp>

int main() {
  auto path = boost::filesystem::path(".") / "mypic.png";
  auto img = cv::imread(path.string(), cv::IMREAD_ANYCOLOR | cv::IMREAD_ANYDEPTH);
}