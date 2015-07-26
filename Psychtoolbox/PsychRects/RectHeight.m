function height = RectHeight(rect)
% height = RectHeight(rect)
%
% Returns the rect's height, or the height of each of the rects in the
% rect-array.
%
% See also PsychRects/Contents.

% 5/12/96 dgp wrote it.
% 7/10/96 dgp PsychRects
% 8/5/96 dgp check rect size.
% 7/27/15 dcn Vectorized

if nargin~=1
	error('Usage:  height = RectHeight(rect)');
end
if size(rect,2)~=4
	error('Wrong size rect argument. Usage:  height = RectHeight(rect)');
end
height = rect(:,RectBottom)-rect(:,RectTop);
