.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooO0/o0000OO0/o0000O00;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/render/RenderManager;

.field private final synthetic OooO0O0:Lcom/android/camera/dualvideo/render/FaceType;

.field private final synthetic OooO0OO:Lcom/android/gallery3d/ui/GLCanvas;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/RenderManager;Lcom/android/camera/dualvideo/render/FaceType;Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO0/o0000OO0/o0000O00;->OooO00o:Lcom/android/camera/dualvideo/render/RenderManager;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooO0/o0000OO0/o0000O00;->OooO0O0:Lcom/android/camera/dualvideo/render/FaceType;

    iput-object p3, p0, LOooO0O0/OooO0O0/OooO00o/OoooO0/o0000OO0/o0000O00;->OooO0OO:Lcom/android/gallery3d/ui/GLCanvas;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooO0/o0000OO0/o0000O00;->OooO00o:Lcom/android/camera/dualvideo/render/RenderManager;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO0/o0000OO0/o0000O00;->OooO0O0:Lcom/android/camera/dualvideo/render/FaceType;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooO0/o0000OO0/o0000O00;->OooO0OO:Lcom/android/gallery3d/ui/GLCanvas;

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->OooO00o(Lcom/android/camera/dualvideo/render/FaceType;Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/CameraItemInterface;)V

    return-void
.end method
