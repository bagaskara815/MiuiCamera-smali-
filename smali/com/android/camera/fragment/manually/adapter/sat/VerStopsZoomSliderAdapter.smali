.class public Lcom/android/camera/fragment/manually/adapter/sat/VerStopsZoomSliderAdapter;
.super Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;
.source "VerStopsZoomSliderAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ZILcom/android/camera/fragment/manually/ZoomValueListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;-><init>(Landroid/content/Context;ZILcom/android/camera/fragment/manually/ZoomValueListener;)V

    return-void
.end method


# virtual methods
.method public draw(ILandroid/graphics/Canvas;ZIF)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->draw(ILandroid/graphics/Canvas;ZIF)V

    if-eqz p3, :cond_0

    .line 2
    iget v1, v0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineSelectWidth:F

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->isStopPoint(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget v1, v0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineStopPointWidth:F

    goto :goto_0

    .line 5
    :cond_1
    iget v1, v0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineWidth:F

    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    if-eqz p3, :cond_2

    .line 6
    iget v6, v0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentLineSelectHalfHeight:F

    neg-float v4, v6

    neg-float v3, v1

    div-float v5, v3, v2

    div-float v9, v1, v2

    iget-object v10, v0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mSelectPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p2

    move v7, v9

    move v8, v9

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/fragment/manually/adapter/sat/StopsZoomSliderAdapter;->isStopPoint(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    iget v7, v0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentLineHalfHeight:F

    neg-float v5, v7

    neg-float v3, v1

    div-float v6, v3, v2

    div-float v10, v1, v2

    iget-object v11, v0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mStopPointPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p2

    move v8, v10

    move v9, v10

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 9
    :cond_3
    iget v15, v0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentLineHalfHeight:F

    neg-float v13, v15

    neg-float v3, v1

    div-float v14, v3, v2

    div-float v18, v1, v2

    iget-object v0, v0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mNormalPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p2

    move/from16 v16, v18

    move/from16 v17, v18

    move-object/from16 v19, v0

    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method
