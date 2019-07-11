@interface NCNotificationListHeaderTitleView : UILabel
@property (nonatomic, assign, readwrite, getter = isHidden) BOOL hidden;
@end

%hook NCNotificationListHeaderTitleView
- (void) layoutSubviews{
	self.hidden = YES;
}
%end
