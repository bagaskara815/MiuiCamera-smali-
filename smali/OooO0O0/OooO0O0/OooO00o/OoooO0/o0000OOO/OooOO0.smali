.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooO0/o0000OOO/OooOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;

.field private final synthetic OooO0O0:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO0/o0000OOO/OooOO0;->OooO00o:Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooO0/o0000OOO/OooOO0;->OooO0O0:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooO0/o0000OOO/OooOO0;->OooO00o:Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooO0/o0000OOO/OooOO0;->OooO0O0:Landroid/graphics/Rect;

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/dualvideo/view/TouchEventView$TouchHelper;->OooO00o(Landroid/graphics/Rect;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    return-void
.end method
