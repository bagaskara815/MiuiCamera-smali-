.class public Lcom/android/camera/ui/SlideSwitchButton;
.super Landroid/view/ViewGroup;
.source "SlideSwitchButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SlideSwitchButton$ItemData;,
        Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;
    }
.end annotation


# static fields
.field public static final NONE:I = -0x1


# instance fields
.field public final DISABLE_COLOR:I

.field public final NORMAL_COLOR:I

.field public SELECT_COLOR:I

.field public mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field public mBackgroundColor:I

.field public mBackgroundPaint:Landroid/graphics/Paint;

.field public mChildMargin:F

.field public mChildMarginWidth:F

.field public mIndicatorColor:I

.field public mIndicatorPaint:Landroid/graphics/Paint;

.field public mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

.field public mIsRTL:Z

.field public mIsTextView:Z

.field public mItemDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/ui/SlideSwitchButton$ItemData;",
            ">;"
        }
    .end annotation
.end field

.field public mItemHeight:F

.field public mItemWidth:F

.field public mMaxHeight:I

.field public mMaxWidth:I

.field public mSelectIndex:I

.field public mSelectMarginLeft:F

.field public mSlideSwitchListener:Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;

.field public mTextBold:Z

.field public mTextSize:F

.field public mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/SlideSwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/SlideSwitchButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/camera/ui/SlideSwitchButton;->mSelectIndex:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    iput v0, p0, Lcom/android/camera/ui/SlideSwitchButton;->mSelectMarginLeft:F

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/camera/R$styleable;->SlideSwitchButton:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 p3, 0xc

    .line 7
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/android/camera/ui/SlideSwitchButton;->mChildMargin:F

    .line 8
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object p3

    iget v0, p0, Lcom/android/camera/ui/SlideSwitchButton;->mChildMargin:F

    invoke-interface {p3, v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getChildMarginWidth(F)F

    move-result p3

    iput p3, p0, Lcom/android/camera/ui/SlideSwitchButton;->mChildMarginWidth:F

    .line 9
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getSlideSwitchBtnIndicatorColor()I

    move-result p3

    iput p3, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorColor:I

    .line 10
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getSlideSwitchBtnBackgroundColor()I

    move-result p3

    iput p3, p0, Lcom/android/camera/ui/SlideSwitchButton;->mBackgroundColor:I

    .line 11
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getSlideSwitchBtnNormalColor()I

    move-result p3

    iput p3, p0, Lcom/android/camera/ui/SlideSwitchButton;->NORMAL_COLOR:I

    .line 12
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getSlideSwitchBtnDisableColor()I

    move-result p3

    iput p3, p0, Lcom/android/camera/ui/SlideSwitchButton;->DISABLE_COLOR:I

    .line 13
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getSlideSwitchBtnTextSelectColor()I

    move-result p3

    const/4 v0, 0x5

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/android/camera/ui/SlideSwitchButton;->SELECT_COLOR:I

    .line 14
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p3

    const/4 v0, 0x4

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/camera/ui/SlideSwitchButton;->mMaxWidth:I

    const/4 p3, 0x3

    const/16 v0, 0xa0

    .line 15
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/camera/ui/SlideSwitchButton;->mMaxHeight:I

    const/4 p3, 0x2

    .line 16
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIsTextView:Z

    const/16 p3, 0x8

    const/16 v0, 0x30

    .line 17
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/android/camera/ui/SlideSwitchButton;->mTextSize:F

    const/4 p3, 0x6

    .line 18
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/camera/ui/SlideSwitchButton;->mTextBold:Z

    .line 19
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 21
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getSlideSwitchBtnBackgroundPaint(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 23
    iget p2, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 25
    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIsRTL:Z

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera/ui/SlideSwitchButton;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mSelectMarginLeft:F

    return p1
.end method

.method public static synthetic access$100(Lcom/android/camera/ui/SlideSwitchButton;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/SlideSwitchButton;->mSelectIndex:I

    return p0
.end method

.method public static synthetic access$102(Lcom/android/camera/ui/SlideSwitchButton;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mSelectIndex:I

    return p1
.end method

.method public static synthetic access$200(Lcom/android/camera/ui/SlideSwitchButton;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SlideSwitchButton;->getSelectColor(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera/ui/SlideSwitchButton;)Landroid/animation/ArgbEvaluator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/SlideSwitchButton;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/ui/SlideSwitchButton;)Landroid/graphics/Paint;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/ui/SlideSwitchButton;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/SlideSwitchButton;->NORMAL_COLOR:I

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera/ui/SlideSwitchButton;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/SlideSwitchButton;->SELECT_COLOR:I

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera/ui/SlideSwitchButton;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/SlideSwitchButton;->setChildColor(II)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/camera/ui/SlideSwitchButton;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/SlideSwitchButton;->setAccessible(IZ)V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/camera/ui/SlideSwitchButton;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SlideSwitchButton;->setIndex(I)V

    return-void
.end method

.method private addImageChild(Ljava/lang/String;ILcom/android/camera/ui/SlideSwitchButton$ItemData;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ColorImageView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p3}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->access$1300(Lcom/android/camera/ui/SlideSwitchButton$ItemData;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 3
    invoke-static {p3}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->access$1400(Lcom/android/camera/ui/SlideSwitchButton$ItemData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 4
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 6
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    .line 7
    invoke-static {p3}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->access$1400(Lcom/android/camera/ui/SlideSwitchButton$ItemData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 8
    iput p2, p0, Lcom/android/camera/ui/SlideSwitchButton;->mSelectIndex:I

    .line 9
    invoke-static {p3}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->access$1500(Lcom/android/camera/ui/SlideSwitchButton$ItemData;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    iget-object p2, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mBackgroundColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    iget p2, p0, Lcom/android/camera/ui/SlideSwitchButton;->DISABLE_COLOR:I

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/camera/ui/SlideSwitchButton;->getSelectColor(I)I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorColor:I

    if-eq v1, v2, :cond_1

    .line 13
    iget-object v1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p2}, Lcom/android/camera/ui/SlideSwitchButton;->getSelectColor(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    iget p2, p0, Lcom/android/camera/ui/SlideSwitchButton;->NORMAL_COLOR:I

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p2}, Lcom/android/camera/ui/SlideSwitchButton;->getSelectColor(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    iget p2, p0, Lcom/android/camera/ui/SlideSwitchButton;->SELECT_COLOR:I

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    .line 17
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 18
    :cond_2
    invoke-static {p3}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->access$1500(Lcom/android/camera/ui/SlideSwitchButton$ItemData;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 19
    iget p2, p0, Lcom/android/camera/ui/SlideSwitchButton;->DISABLE_COLOR:I

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 21
    :cond_3
    iget p2, p0, Lcom/android/camera/ui/SlideSwitchButton;->NORMAL_COLOR:I

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    .line 22
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 23
    :goto_1
    invoke-static {p3}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->access$1400(Lcom/android/camera/ui/SlideSwitchButton$ItemData;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, v0, p3, p1}, Lcom/android/camera/ui/SlideSwitchButton;->setAccessible(Landroid/view/View;Lcom/android/camera/ui/SlideSwitchButton$ItemData;Z)V

    .line 24
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addTextChild(Ljava/lang/String;ILcom/android/camera/ui/SlideSwitchButton$ItemData;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 3
    iget v1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mTextSize:F

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4
    invoke-static {p3}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->access$1100(Lcom/android/camera/ui/SlideSwitchButton$ItemData;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5
    invoke-static {p3}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->access$1400(Lcom/android/camera/ui/SlideSwitchButton$ItemData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/camera/ui/SlideSwitchButton;->mTextBold:Z

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 8
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    .line 9
    invoke-static {p3}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->access$1400(Lcom/android/camera/ui/SlideSwitchButton$ItemData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 10
    iget v1, p0, Lcom/android/camera/ui/SlideSwitchButton;->SELECT_COLOR:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    iput p2, p0, Lcom/android/camera/ui/SlideSwitchButton;->mSelectIndex:I

    .line 12
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 13
    iget-object v1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p2}, Lcom/android/camera/ui/SlideSwitchButton;->getSelectColor(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p3}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->access$1500(Lcom/android/camera/ui/SlideSwitchButton$ItemData;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 15
    iget p2, p0, Lcom/android/camera/ui/SlideSwitchButton;->DISABLE_COLOR:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 17
    :cond_1
    iget p2, p0, Lcom/android/camera/ui/SlideSwitchButton;->NORMAL_COLOR:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 19
    :goto_0
    invoke-static {p3}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->access$1400(Lcom/android/camera/ui/SlideSwitchButton$ItemData;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, v0, p3, p1}, Lcom/android/camera/ui/SlideSwitchButton;->setAccessible(Landroid/view/View;Lcom/android/camera/ui/SlideSwitchButton$ItemData;Z)V

    .line 20
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getIndex(Ljava/lang/String;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/camera/ui/SlideSwitchButton$ItemData;",
            ">;)I"
        }
    .end annotation

    const/4 p0, -0x1

    if-nez p1, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/SlideSwitchButton$ItemData;

    invoke-static {v1}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->access$1400(Lcom/android/camera/ui/SlideSwitchButton$ItemData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method private getSelectColor(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/SlideSwitchButton;->mItemDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    if-ltz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/SlideSwitchButton;->mItemDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/SlideSwitchButton$ItemData;

    invoke-static {p1}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->access$1000(Lcom/android/camera/ui/SlideSwitchButton$ItemData;)I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget p0, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorColor:I

    return p0

    :cond_0
    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isDataEqual(Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/ui/SlideSwitchButton$ItemData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/camera/ui/SlideSwitchButton$ItemData;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private mapItemData(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/camera/ui/SlideSwitchButton$ItemData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    new-instance v1, Lcom/android/camera/ui/SlideSwitchButton$ItemData;

    invoke-direct {v1}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;-><init>()V

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mIconRes:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->setIconRes(I)V

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->setDisplayNameRes(I)V

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->setDisplayNameStr(Ljava/lang/String;)V

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mContentDescriptionRes:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->setContentDescriptionRes(I)V

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget-boolean v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->setIsDisabled(Z)V

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget-boolean v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mIsShowText:Z

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->setIsShowText(Z)V

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mSelectColor:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->setOriginalSelectColor(I)V

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->setValue(Ljava/lang/String;)V

    .line 12
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private setAccessible(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/SlideSwitchButton;->mItemDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mItemDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/SlideSwitchButton$ItemData;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/camera/ui/SlideSwitchButton;->setAccessible(Landroid/view/View;Lcom/android/camera/ui/SlideSwitchButton$ItemData;Z)V

    :cond_0
    return-void
.end method

.method private setAccessible(Landroid/view/View;Lcom/android/camera/ui/SlideSwitchButton$ItemData;Z)V
    .locals 3

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v1, p2, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->mDisplayNameStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p2}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->access$1100(Lcom/android/camera/ui/SlideSwitchButton$ItemData;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p2, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->mDisplayNameStr:Ljava/lang/String;

    .line 6
    :goto_0
    invoke-static {p2}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->access$1200(Lcom/android/camera/ui/SlideSwitchButton$ItemData;)I

    move-result v2

    if-lez v2, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p2}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->access$1200(Lcom/android/camera/ui/SlideSwitchButton$ItemData;)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    const-string p2, ", "

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f1200af

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setChildColor(II)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SlideSwitchButton;->getSelectColor(I)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorColor:I

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setIndex(I)V
    .locals 3

    .line 15
    iget v0, p0, Lcom/android/camera/ui/SlideSwitchButton;->SELECT_COLOR:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/SlideSwitchButton;->setChildColor(II)V

    .line 16
    iget v0, p0, Lcom/android/camera/ui/SlideSwitchButton;->mSelectIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 17
    iget v1, p0, Lcom/android/camera/ui/SlideSwitchButton;->NORMAL_COLOR:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/SlideSwitchButton;->setChildColor(II)V

    .line 18
    iget v0, p0, Lcom/android/camera/ui/SlideSwitchButton;->mSelectIndex:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/SlideSwitchButton;->setAccessible(IZ)V

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mChildMargin:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mChildMarginWidth:F

    iget v2, p0, Lcom/android/camera/ui/SlideSwitchButton;->mItemWidth:F

    add-float/2addr v2, v1

    add-float/2addr v2, v1

    int-to-float v1, p1

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 20
    iget-object v1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/SlideSwitchButton;->getSelectColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    iput p1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mSelectIndex:I

    const/4 v1, 0x1

    .line 22
    invoke-direct {p0, p1, v1}, Lcom/android/camera/ui/SlideSwitchButton;->setAccessible(IZ)V

    int-to-float p1, v0

    .line 23
    iput p1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mSelectMarginLeft:F

    .line 24
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private setIndex(IZ)V
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/SlideSwitchButton;->mSelectIndex:I

    if-eq v0, p1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mChildMargin:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mChildMarginWidth:F

    iget v2, p0, Lcom/android/camera/ui/SlideSwitchButton;->mItemWidth:F

    add-float/2addr v2, v1

    add-float/2addr v2, v1

    int-to-float v1, p1

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    if-eqz p2, :cond_1

    .line 5
    iget p2, p0, Lcom/android/camera/ui/SlideSwitchButton;->mSelectMarginLeft:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 6
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    .line 7
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    iget-object v1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/camera/ui/SlideSwitchButton$1;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/android/camera/ui/SlideSwitchButton$1;-><init>(Lcom/android/camera/ui/SlideSwitchButton;FII)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    iget-object p2, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/SlideSwitchButton$2;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/SlideSwitchButton$2;-><init>(Lcom/android/camera/ui/SlideSwitchButton;I)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    iget-object p2, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SlideSwitchButton;->setIndex(I)V

    .line 12
    :goto_0
    iget-object p2, p0, Lcom/android/camera/ui/SlideSwitchButton;->mSlideSwitchListener:Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1200af

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-interface {p2, v0, v1, p0}, Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;->toSlideSwitch(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setItemColor(Landroid/view/View;I)V
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/android/camera/ui/ColorImageView;

    if-eqz p0, :cond_1

    .line 2
    check-cast p1, Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1}, Lcom/android/camera/ui/ColorImageView;->getColor()I

    move-result p0

    if-ne p0, p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    goto :goto_0

    .line 4
    :cond_1
    instance-of p0, p1, Landroid/widget/TextView;

    if-eqz p0, :cond_3

    .line 5
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    if-ne p0, p2, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateViewsStatus(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/ui/SlideSwitchButton$ItemData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/SlideSwitchButton$ItemData;

    invoke-static {v3}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->access$1500(Lcom/android/camera/ui/SlideSwitchButton$ItemData;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 5
    iget v3, p0, Lcom/android/camera/ui/SlideSwitchButton;->DISABLE_COLOR:I

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/SlideSwitchButton;->setItemColor(Landroid/view/View;I)V

    goto :goto_1

    .line 6
    :cond_0
    iget v3, p0, Lcom/android/camera/ui/SlideSwitchButton;->mSelectIndex:I

    const/4 v4, 0x1

    if-ne v3, v1, :cond_1

    .line 7
    iget-object v3, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcom/android/camera/ui/SlideSwitchButton;->getSelectColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    iget v3, p0, Lcom/android/camera/ui/SlideSwitchButton;->SELECT_COLOR:I

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/SlideSwitchButton;->setItemColor(Landroid/view/View;I)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 11
    iget v3, p0, Lcom/android/camera/ui/SlideSwitchButton;->NORMAL_COLOR:I

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/SlideSwitchButton;->setItemColor(Landroid/view/View;I)V

    .line 12
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/camera/ui/SlideSwitchButton;->getSelectColor(I)I

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorColor:I

    if-eq v3, v4, :cond_2

    .line 13
    iget v3, p0, Lcom/android/camera/ui/SlideSwitchButton;->NORMAL_COLOR:I

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/SlideSwitchButton;->setItemColor(Landroid/view/View;I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getIndicatorCount()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/SlideSwitchButton;->mType:I

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SlideSwitchButton;->mSlideSwitchListener:Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;->enableSwitch()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5
    iget v0, p0, Lcom/android/camera/ui/SlideSwitchButton;->mSelectIndex:I

    if-ne v1, v0, :cond_3

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x8000

    .line 7
    invoke-virtual {p1, p0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/SlideSwitchButton;->setIndex(IZ)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Lcom/android/camera/ui/SlideSwitchButton;->mSelectMarginLeft:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/android/camera/ui/SlideSwitchButton;->mChildMargin:F

    add-float/2addr v1, v2

    iget v2, v0, Lcom/android/camera/ui/SlideSwitchButton;->mChildMarginWidth:F

    iget v3, v0, Lcom/android/camera/ui/SlideSwitchButton;->mItemWidth:F

    add-float/2addr v3, v2

    add-float/2addr v3, v2

    iget v2, v0, Lcom/android/camera/ui/SlideSwitchButton;->mSelectIndex:I

    int-to-float v2, v2

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Lcom/android/camera/ui/SlideSwitchButton;->mSelectMarginLeft:F

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-interface {v1, v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getCircleRadius(F)F

    move-result v9

    .line 4
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v1

    iget v2, v0, Lcom/android/camera/ui/SlideSwitchButton;->mItemHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getCircleRadius(F)F

    move-result v16

    .line 5
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getRectHeight()I

    move-result v1

    int-to-float v5, v1

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v6, v1, v5

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v7, v1, v5

    iget-object v10, v0, Lcom/android/camera/ui/SlideSwitchButton;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v4, v5

    move v8, v9

    .line 8
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 9
    iget v11, v0, Lcom/android/camera/ui/SlideSwitchButton;->mSelectMarginLeft:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/android/camera/ui/SlideSwitchButton;->mChildMargin:F

    add-float v12, v1, v2

    iget v1, v0, Lcom/android/camera/ui/SlideSwitchButton;->mSelectMarginLeft:F

    iget v2, v0, Lcom/android/camera/ui/SlideSwitchButton;->mItemWidth:F

    add-float v13, v1, v2

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/android/camera/ui/SlideSwitchButton;->mChildMargin:F

    add-float/2addr v1, v2

    iget v2, v0, Lcom/android/camera/ui/SlideSwitchButton;->mItemHeight:F

    add-float v14, v1, v2

    iget-object v1, v0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move/from16 v15, v16

    move-object/from16 v17, v1

    .line 11
    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 12
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/android/camera/ui/SlideSwitchButton;->mChildMargin:F

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/android/camera/ui/SlideSwitchButton;->mChildMargin:F

    add-float/2addr p2, p3

    float-to-int p2, p2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    .line 4
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    int-to-float v0, p1

    .line 5
    iget v1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mItemWidth:F

    add-float/2addr v1, v0

    float-to-int v1, v1

    int-to-float v2, p2

    iget v3, p0, Lcom/android/camera/ui/SlideSwitchButton;->mItemHeight:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p5, p1, p2, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 6
    iget p1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mChildMarginWidth:F

    iget p5, p0, Lcom/android/camera/ui/SlideSwitchButton;->mItemWidth:F

    add-float/2addr p5, p1

    add-float/2addr p5, p1

    add-float/2addr v0, p5

    float-to-int p1, v0

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/camera/ui/SlideSwitchButton;->mMaxWidth:I

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p1, v1}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p1

    iget v0, p0, Lcom/android/camera/ui/SlideSwitchButton;->mMaxHeight:I

    .line 3
    invoke-static {v0, p2, v1}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p2

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 5
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    iget v7, p0, Lcom/android/camera/ui/SlideSwitchButton;->mChildMargin:F

    invoke-interface/range {v2 .. v7}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTopMenuInterface;->getItemWidth(IIIIF)F

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mItemWidth:F

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/android/camera/ui/SlideSwitchButton;->mChildMargin:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p2, v0

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mItemHeight:F

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_0

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 9
    iget p2, p0, Lcom/android/camera/ui/SlideSwitchButton;->mItemWidth:F

    float-to-int p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v2, p0, Lcom/android/camera/ui/SlideSwitchButton;->mItemHeight:F

    float-to-int v2, v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mBackgroundColor:I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/SlideSwitchButton;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setComponentData(Lcom/android/camera/data/data/ComponentData;IZ)V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/ui/SlideSwitchButton;->mapItemData(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 2
    iget-boolean v2, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIsRTL:Z

    if-eqz v2, :cond_0

    .line 3
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mItemDataList:Ljava/util/List;

    invoke-direct {p0, v1, p1}, Lcom/android/camera/ui/SlideSwitchButton;->isDataEqual(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIsTextView:Z

    if-ne p1, p3, :cond_4

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/SlideSwitchButton;->getIndex(Ljava/lang/String;Ljava/util/List;)I

    move-result p1

    .line 7
    iget-object v2, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_3

    .line 8
    :cond_1
    iget v2, p0, Lcom/android/camera/ui/SlideSwitchButton;->mSelectIndex:I

    if-eq p1, v2, :cond_2

    .line 9
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SlideSwitchButton;->setIndex(I)V

    .line 10
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/camera/ui/SlideSwitchButton;->updateViewsStatus(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    .line 11
    :catch_0
    :cond_4
    iput-object v1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mItemDataList:Ljava/util/List;

    .line 12
    iput-boolean p3, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIsTextView:Z

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 15
    iput p1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mSelectMarginLeft:F

    const/4 p1, 0x0

    .line 16
    :goto_0
    iget-object p2, p0, Lcom/android/camera/ui/SlideSwitchButton;->mItemDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    .line 17
    iget-object p2, p0, Lcom/android/camera/ui/SlideSwitchButton;->mItemDataList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/ui/SlideSwitchButton$ItemData;

    .line 18
    iget-boolean p3, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIsTextView:Z

    if-eqz p3, :cond_5

    .line 19
    invoke-direct {p0, v0, p1, p2}, Lcom/android/camera/ui/SlideSwitchButton;->addTextChild(Ljava/lang/String;ILcom/android/camera/ui/SlideSwitchButton$ItemData;)V

    goto :goto_1

    .line 20
    :cond_5
    invoke-static {p2}, Lcom/android/camera/ui/SlideSwitchButton$ItemData;->access$1600(Lcom/android/camera/ui/SlideSwitchButton$ItemData;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 21
    invoke-direct {p0, v0, p1, p2}, Lcom/android/camera/ui/SlideSwitchButton;->addTextChild(Ljava/lang/String;ILcom/android/camera/ui/SlideSwitchButton$ItemData;)V

    goto :goto_1

    .line 22
    :cond_6
    invoke-direct {p0, v0, p1, p2}, Lcom/android/camera/ui/SlideSwitchButton;->addImageChild(Ljava/lang/String;ILcom/android/camera/ui/SlideSwitchButton$ItemData;)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorColor:I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/SlideSwitchButton;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setSlideSwitchListener(Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mSlideSwitchListener:Lcom/android/camera/ui/SlideSwitchButton$SlideSwitchListener;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/SlideSwitchButton;->mType:I

    return-void
.end method
