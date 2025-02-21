.class public Lcom/android/camera/ui/AudioZoomIndicator;
.super Landroid/view/View;
.source "AudioZoomIndicator.java"


# static fields
.field public static final MAX_CIRCLE:I = 0xa

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mHalfPointAlpha:F

.field public mOffAreaColor:I

.field public mOffAreaPaint:Landroid/graphics/Paint;

.field public mOnAreaColor:I

.field public mOnAreaPaint:Landroid/graphics/Paint;

.field public mOnCount:I

.field public mPadding:F

.field public mRadius:F

.field public mRectRadius:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/ui/AudioZoomIndicator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/AudioZoomIndicator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/AudioZoomIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/AudioZoomIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/ui/AudioZoomIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 5
    iput p2, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mOnCount:I

    const/4 p2, 0x0

    .line 6
    iput p2, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mHalfPointAlpha:F

    .line 7
    invoke-direct {p0, p1}, Lcom/android/camera/ui/AudioZoomIndicator;->init(Landroid/content/Context;)V

    return-void
.end method

.method private drawCircles(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mRadius:F

    .line 2
    iget-object v1, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mOnAreaPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    iget v3, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mOnCount:I

    const/high16 v4, 0x40000000    # 2.0f

    if-ge v2, v3, :cond_0

    .line 4
    iget v3, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mRadius:F

    iget-object v5, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mOnAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 5
    iget v3, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mRadius:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mPadding:F

    add-float/2addr v3, v4

    add-float/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v2, v3, 0xa

    move v3, v0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 6
    iget v5, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mRadius:F

    iget-object v6, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mOffAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 7
    iget v5, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mRadius:F

    mul-float/2addr v5, v4

    iget v6, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mPadding:F

    add-float/2addr v5, v6

    add-float/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mHalfPointAlpha:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 9
    iget-object v2, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mOnAreaPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 10
    iget v1, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mRadius:F

    iget-object p0, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mOnAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private drawRectangles(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/android/camera/ui/AudioZoomIndicator;->TAG:Ljava/lang/String;

    const-string v2, "draw:SupportAiAudioNew"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v1, v0, Lcom/android/camera/ui/AudioZoomIndicator;->mRadius:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    mul-float/2addr v1, v2

    .line 3
    iget-object v2, v0, Lcom/android/camera/ui/AudioZoomIndicator;->mOnAreaPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v5, v2

    move v14, v4

    .line 4
    :goto_0
    iget v6, v0, Lcom/android/camera/ui/AudioZoomIndicator;->mOnCount:I

    if-ge v5, v6, :cond_0

    add-float v9, v14, v3

    add-float v10, v4, v1

    .line 5
    iget v12, v0, Lcom/android/camera/ui/AudioZoomIndicator;->mRectRadius:F

    iget-object v13, v0, Lcom/android/camera/ui/AudioZoomIndicator;->mOnAreaPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object/from16 v6, p1

    move v7, v14

    move v11, v12

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 6
    iget v6, v0, Lcom/android/camera/ui/AudioZoomIndicator;->mPadding:F

    add-float/2addr v6, v3

    add-float/2addr v14, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v5, v6, 0xa

    move v15, v14

    :goto_1
    if-ge v2, v5, :cond_1

    add-float v9, v15, v3

    add-float v10, v4, v1

    .line 7
    iget v12, v0, Lcom/android/camera/ui/AudioZoomIndicator;->mRectRadius:F

    iget-object v13, v0, Lcom/android/camera/ui/AudioZoomIndicator;->mOffAreaPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object/from16 v6, p1

    move v7, v15

    move v11, v12

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 8
    iget v6, v0, Lcom/android/camera/ui/AudioZoomIndicator;->mPadding:F

    add-float/2addr v6, v3

    add-float/2addr v15, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iget v2, v0, Lcom/android/camera/ui/AudioZoomIndicator;->mHalfPointAlpha:F

    cmpl-float v5, v2, v4

    if-lez v5, :cond_2

    .line 10
    iget-object v5, v0, Lcom/android/camera/ui/AudioZoomIndicator;->mOnAreaPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    add-float v9, v14, v3

    add-float v10, v1, v4

    .line 11
    iget v12, v0, Lcom/android/camera/ui/AudioZoomIndicator;->mRectRadius:F

    iget-object v13, v0, Lcom/android/camera/ui/AudioZoomIndicator;->mOnAreaPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object/from16 v6, p1

    move v7, v14

    move v11, v12

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTips()Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;->getAiAudioZoomIndicatorColor()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mOnAreaColor:I

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mOnAreaPaint:Landroid/graphics/Paint;

    .line 3
    iget v1, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mOnAreaColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mOnAreaPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v0, 0x7f060334

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mOffAreaColor:I

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mOffAreaPaint:Landroid/graphics/Paint;

    .line 7
    iget v2, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mOffAreaColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mOffAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOo()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0oo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mRadius:F

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mPadding:F

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mRadius:F

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mPadding:F

    .line 14
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070059

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mRectRadius:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOo()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0oo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/ui/AudioZoomIndicator;->drawRectangles(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/AudioZoomIndicator;->drawCircles(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    iget p1, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mRadius:F

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mPadding:F

    const/high16 v1, 0x41100000    # 9.0f

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 3
    iget v0, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mRadius:F

    mul-float/2addr v0, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public update(FFF)V
    .locals 2

    sub-float/2addr p2, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p2, v0

    sub-float/2addr p3, p1

    div-float p1, p3, p2

    float-to-int p1, p1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOo()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0oo()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mOnCount:I

    if-le p1, v1, :cond_0

    rem-float/2addr p3, p2

    div-float/2addr p3, p2

    .line 2
    iput p3, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mHalfPointAlpha:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mHalfPointAlpha:F

    .line 4
    :goto_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOo()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0oo()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTips()Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;->getAiAudioZoomIndicatorColor()I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mOnAreaColor:I

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mOnAreaPaint:Landroid/graphics/Paint;

    .line 7
    iget p2, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mOnAreaColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/ui/AudioZoomIndicator;->mOnAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
