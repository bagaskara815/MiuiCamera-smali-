.class public LOooO0O0/OooO00o/OooO00o/OooO0oO$OooO0OO;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO0O0/OooO00o/OooO00o/OooO0oO;->OooO0OO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOOOO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "LOooO0O0/OooO00o/OooO00o/OooOOO<",
        "LOooO0O0/OooO00o/OooO00o/OooO0o;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Landroid/content/Context;

.field public final synthetic OooO0O0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LOooO0O0/OooO00o/OooO00o/OooO0oO$OooO0OO;->OooO00o:Landroid/content/Context;

    iput-object p2, p0, LOooO0O0/OooO00o/OooO00o/OooO0oO$OooO0OO;->OooO0O0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()LOooO0O0/OooO00o/OooO00o/OooOOO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO0O0/OooO00o/OooO00o/OooOOO<",
            "LOooO0O0/OooO00o/OooO00o/OooO0o;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LOooO0O0/OooO00o/OooO00o/OooO0oO$OooO0OO;->OooO00o:Landroid/content/Context;

    iget-object p0, p0, LOooO0O0/OooO00o/OooO00o/OooO0oO$OooO0OO;->OooO0O0:Ljava/lang/String;

    invoke-static {v0, p0}, LOooO0O0/OooO00o/OooO00o/OooOo/OooO0OO;->OooO00o(Landroid/content/Context;Ljava/lang/String;)LOooO0O0/OooO00o/OooO00o/OooOOO;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, LOooO0O0/OooO00o/OooO00o/OooO0oO$OooO0OO;->call()LOooO0O0/OooO00o/OooO00o/OooOOO;

    move-result-object p0

    return-object p0
.end method
