.class public Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FragmentLiveSpeed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/live/FragmentLiveSpeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeedItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter$SpeedItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter$SpeedItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public mColorNormal:I

.field public mDegree:I

.field public mLayoutInflater:Landroid/view/LayoutInflater;

.field public mListener:Landroid/widget/AdapterView$OnItemClickListener;

.field public mSelectIndex:I

.field public mSpeedItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/live/FragmentLiveSpeed$LiveSpeedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILandroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/live/FragmentLiveSpeed$LiveSpeedItem;",
            ">;I",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;->mSpeedItemList:Ljava/util/List;

    .line 3
    iput p3, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;->mSelectIndex:I

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 5
    iput-object p4, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060395

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;->mColorNormal:I

    return-void
.end method


# virtual methods
.method public changeItemView(Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter$SpeedItemHolder;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;->mSpeedItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$LiveSpeedItem;

    .line 2
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0a01fe

    .line 3
    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5
    iget v1, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;->mDegree:I

    int-to-float v1, v1

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 6
    iget v1, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;->mSelectIndex:I

    if-ne p2, v1, :cond_0

    .line 7
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget p0, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;->mColorNormal:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/fragment/live/FragmentLiveSpeed$LiveSpeedItem;->getTextId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;->mSpeedItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getSticker(I)Lcom/android/camera/fragment/live/FragmentLiveSpeed$LiveSpeedItem;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;->mSpeedItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$LiveSpeedItem;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter$SpeedItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;->onBindViewHolder(Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter$SpeedItemHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter$SpeedItemHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;->onBindViewHolder(Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter$SpeedItemHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter$SpeedItemHolder;I)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;->changeItemView(Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter$SpeedItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter$SpeedItemHolder;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter$SpeedItemHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;->onBindViewHolder(Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter$SpeedItemHolder;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Ljava/lang/Boolean;

    if-eqz p3, :cond_1

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;->changeItemView(Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter$SpeedItemHolder;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter$SpeedItemHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter$SpeedItemHolder;
    .locals 2

    .line 2
    iget-object p2, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0096

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter$SpeedItemHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter$SpeedItemHolder;-><init>(Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setRotation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSpeed$SpeedItemAdapter;->mDegree:I

    return-void
.end method
