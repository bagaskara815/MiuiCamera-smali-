.class public Lcom/android/camera/ui/AutoHibernationBatteryView;
.super Landroid/view/View;
.source "AutoHibernationBatteryView.java"


# instance fields
.field public mBattery:Ljava/lang/String;

.field public mBatteryCharging:Z

.field public mBatteryChargingColor:I

.field public mBatteryContentHeight:I

.field public mBatteryDrawable:Landroid/graphics/drawable/Drawable;

.field public mBatteryDrawableCharging:Landroid/graphics/drawable/Drawable;

.field public mBatteryInt:I

.field public mBatteryLowColor:I

.field public mBatteryMarginLeft:I

.field public mBatteryMarginRight:I

.field public mBatteryNormalColor:I

.field public mGap:I

.field public mHeight:I

.field public mPaint:Landroid/graphics/Paint;

.field public mTextPaint:Landroid/text/TextPaint;

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryInt:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBattery:Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/ui/AutoHibernationBatteryView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 6
    iput p2, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryInt:I

    const-string p2, ""

    .line 7
    iput-object p2, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBattery:Ljava/lang/String;

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/ui/AutoHibernationBatteryView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 10
    iput p2, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryInt:I

    const-string p2, ""

    .line 11
    iput-object p2, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBattery:Ljava/lang/String;

    .line 12
    invoke-direct {p0, p1}, Lcom/android/camera/ui/AutoHibernationBatteryView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 14
    iput p2, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryInt:I

    const-string p2, ""

    .line 15
    iput-object p2, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBattery:Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lcom/android/camera/ui/AutoHibernationBatteryView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mWidth:I

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mHeight:I

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mGap:I

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryMarginLeft:I

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryMarginRight:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryContentHeight:I

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryNormalColor:I

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryLowColor:I

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryChargingColor:I

    .line 10
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mTextPaint:Landroid/text/TextPaint;

    .line 11
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700e9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 13
    iget-object v2, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryNormalColor:I

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/android/camera/Util;->getMiuiTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080454

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryDrawable:Landroid/graphics/drawable/Drawable;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080455

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryDrawableCharging:Landroid/graphics/drawable/Drawable;

    .line 18
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mPaint:Landroid/graphics/Paint;

    .line 19
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryNormalColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBattery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBattery:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 6
    iget v2, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mGap:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 7
    iget v3, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mHeight:I

    iget-object v4, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 8
    iget-object v4, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    iget-object v3, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10
    iget-object v3, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryMarginRight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryMarginLeft:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 11
    iget v4, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryInt:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    .line 12
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v2

    iget v6, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryMarginLeft:I

    int-to-float v7, v6

    add-float/2addr v7, v5

    iget v8, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mHeight:I

    iget v9, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryContentHeight:I

    sub-int v10, v8, v9

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    int-to-float v6, v6

    add-float/2addr v5, v6

    add-float/2addr v5, v3

    add-int/2addr v8, v9

    int-to-float v3, v8

    div-float/2addr v3, v11

    invoke-direct {v4, v7, v10, v5, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 13
    iget-boolean v3, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryCharging:Z

    if-eqz v3, :cond_0

    .line 14
    iget-object v3, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryChargingColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 15
    :cond_0
    iget v3, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryInt:I

    const/16 v5, 0x14

    if-lt v3, v5, :cond_1

    .line 16
    iget-object v3, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryNormalColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryLowColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v11, v11, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 19
    iget-boolean v3, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryCharging:Z

    if-eqz v3, :cond_2

    .line 20
    iget v3, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v3, v0

    iget-object v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryDrawableCharging:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int/2addr v3, v0

    iget v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mGap:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    .line 21
    iget v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mHeight:I

    iget-object v4, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryDrawableCharging:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    .line 22
    iget-object v4, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryDrawableCharging:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryDrawableCharging:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v4, v3, v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 23
    iget-object v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryDrawableCharging:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 24
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBattery:Ljava/lang/String;

    iget v3, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mGap:I

    iget-object v4, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    int-to-float v2, v3

    iget v3, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mHeight:I

    iget v4, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v3, v4

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    int-to-float v1, v3

    iget-object p0, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public showBattery(IZ)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryCharging:Z

    .line 2
    iput p1, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBatteryInt:I

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/AutoHibernationBatteryView;->mBattery:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
