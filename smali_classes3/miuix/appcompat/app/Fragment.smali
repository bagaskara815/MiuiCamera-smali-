.class public Lmiuix/appcompat/app/Fragment;
.super Landroidx/fragment/app/Fragment;
.source "Fragment.java"

# interfaces
.implements Lmiuix/appcompat/app/IFragment;


# instance fields
.field public mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

.field public mHasMenu:Z

.field public mMenuVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    .line 3
    iput-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

    return-void
.end method


# virtual methods
.method public dismissImmersionMenu(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->dismissImmersionMenu(Z)V

    return-void
.end method

.method public getActionBar()Lmiuix/appcompat/app/ActionBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    return-object p0
.end method

.method public getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p0

    return-object p0
.end method

.method public getExtraHorizontalPaddingLevel()I
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getExtraHorizontalPaddingLevel()I

    move-result p0

    return p0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    return-object p0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getThemedContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->getView()Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/FragmentDelegate;->updateOptionsMenu(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->isImmersionMenuEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public isExtraHorizontalPaddingEnable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->isExtraHorizontalPaddingEnable()Z

    move-result p0

    return p0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance v0, Lmiuix/appcompat/app/FragmentDelegate;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/FragmentDelegate;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-boolean p1, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->isImmersionMenuEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/appcompat/app/FragmentDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->dismissImmersionMenu(Z)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->onDestroyView()V

    return-void
.end method

.method public final onHiddenChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->onVisibilityChanged(Z)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-boolean p1, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->isImmersionMenuEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onPostResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->onStop()V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public requestWindowFeature(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->requestWindowFeature(I)Z

    move-result p0

    return p0
.end method

.method public setExtraHorizontalPaddingEnable(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setExtraHorizontalPaddingEnable(Z)V

    return-void
.end method

.method public setExtraHorizontalPaddingLevel(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setExtraHorizontalPaddingLevel(I)V

    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 2
    iget-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    if-eq v0, p1, :cond_0

    .line 3
    iput-boolean p1, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->isImmersionMenuEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public setImmersionMenuEnabled(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->setImmersionMenuEnabled(Z)V

    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 2
    iget-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    .line 3
    iput-boolean p1, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public setOnStatusBarChangeListener(Lmiuix/appcompat/app/OnStatusBarChangeListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setOnStatusBarChangeListener(Lmiuix/appcompat/app/OnStatusBarChangeListener;)V

    return-void
.end method

.method public setThemeRes(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->setExtraThemeRes(I)V

    return-void
.end method

.method public showImmersionMenu()V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->showImmersionMenu()V

    return-void
.end method

.method public showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->showImmersionMenu(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/FragmentDelegate;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

.method public updateOptionsMenuContent()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->isImmersionMenuEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiuix/appcompat/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lmiuix/appcompat/app/Fragment;->mDelegate:Lmiuix/appcompat/app/FragmentDelegate;

    invoke-virtual {p0}, Lmiuix/appcompat/app/FragmentDelegate;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method
