.class public Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback$1;
.super Ljava/lang/Object;
.source "DrawerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;


# direct methods
.method public constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback$1;->this$1:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback$1;->this$1:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->peekDrawer()V

    return-void
.end method
