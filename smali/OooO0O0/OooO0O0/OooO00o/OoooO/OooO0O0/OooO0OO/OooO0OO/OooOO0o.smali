.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooO/OooO0O0/OooO0OO/OooO0OO/OooOO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

.field private final synthetic OooO0O0:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO/OooO0O0/OooO0OO/OooO0OO/OooOO0o;->OooO00o:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooO/OooO0O0/OooO0OO/OooO0OO/OooOO0o;->OooO0O0:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooO/OooO0O0/OooO0OO/OooO0OO/OooOO0o;->OooO00o:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    iget-object p0, p0, LOooO0O0/OooO0O0/OooO00o/OoooO/OooO0O0/OooO0OO/OooO0OO/OooOO0o;->OooO0O0:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->OooO00o(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
