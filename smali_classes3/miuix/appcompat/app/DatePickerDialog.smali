.class public Lmiuix/appcompat/app/DatePickerDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "DatePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field public static final DAY:Ljava/lang/String; = "miuix:day"

.field public static final MONTH:Ljava/lang/String; = "miuix:month"

.field public static final YEAR:Ljava/lang/String; = "miuix:year"


# instance fields
.field public final mCalendar:Lmiuix/pickerwidget/date/Calendar;

.field public final mCallBack:Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;

.field public final mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

.field public mLunarModePanel:Landroid/view/View;

.field public mLunarModeState:Lmiuix/slidingwidget/widget/SlidingButton;

.field public mOnDateChangedListener:Lmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;

.field public mTitleNeedsUpdate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    .line 4
    new-instance p1, Lmiuix/appcompat/app/DatePickerDialog$1;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/DatePickerDialog$1;-><init>(Lmiuix/appcompat/app/DatePickerDialog;)V

    iput-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mOnDateChangedListener:Lmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;

    .line 5
    iput-object p3, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCallBack:Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;

    .line 6
    new-instance p1, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {p1}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x104000a

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    new-instance p3, Lmiuix/appcompat/app/DatePickerDialog$2;

    invoke-direct {p3, p0}, Lmiuix/appcompat/app/DatePickerDialog$2;-><init>(Lmiuix/appcompat/app/DatePickerDialog;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2, p3}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x1040000

    invoke-virtual {p2, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p2, p3}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p2, 0x0

    .line 10
    invoke-virtual {p0, p2}, Lmiuix/appcompat/app/AlertDialog;->setIcon(I)V

    const-string p2, "layout_inflater"

    .line 11
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 12
    sget p2, Lmiuix/appcompat/R$layout;->miuix_appcompat_date_picker_dialog:I

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 14
    sget p2, Lmiuix/appcompat/R$id;->datePicker:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/pickerwidget/widget/DatePicker;

    iput-object p2, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    .line 15
    iget-object p3, p0, Lmiuix/appcompat/app/DatePickerDialog;->mOnDateChangedListener:Lmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;

    invoke-virtual {p2, p4, p5, p6, p3}, Lmiuix/pickerwidget/widget/DatePicker;->init(IIILmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;)V

    .line 16
    invoke-direct {p0, p4, p5, p6}, Lmiuix/appcompat/app/DatePickerDialog;->updateTitle(III)V

    .line 17
    sget p2, Lmiuix/appcompat/R$id;->lunarModePanel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lmiuix/appcompat/app/DatePickerDialog;->mLunarModePanel:Landroid/view/View;

    .line 18
    sget p2, Lmiuix/appcompat/R$id;->datePickerLunar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mLunarModeState:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 19
    new-instance p2, LOooO0Oo/OooO0O0/OooO00o/OooO0Oo;

    invoke-direct {p2, p0}, LOooO0Oo/OooO0O0/OooO00o/OooO0Oo;-><init>(Lmiuix/appcompat/app/DatePickerDialog;)V

    invoke-virtual {p1, p2}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/app/DatePickerDialog;-><init>(Landroid/content/Context;ILmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;III)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/app/DatePickerDialog;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    return p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/app/DatePickerDialog;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/app/DatePickerDialog;->updateTitle(III)V

    return-void
.end method

.method public static synthetic access$200(Lmiuix/appcompat/app/DatePickerDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/DatePickerDialog;->tryNotifyDateSet()V

    return-void
.end method

.method private tryNotifyDateSet()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCallBack:Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCallBack:Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    .line 4
    invoke-virtual {v3}, Lmiuix/pickerwidget/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object p0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DatePicker;->getDayOfMonth()I

    move-result p0

    .line 5
    invoke-interface {v0, v1, v2, v3, p0}, Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;->onDateSet(Lmiuix/pickerwidget/widget/DatePicker;III)V

    :cond_0
    return-void
.end method

.method private updateTitle(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    const/16 p2, 0x9

    invoke-virtual {p1, p2, p3}, Lmiuix/pickerwidget/date/Calendar;->set(II)Lmiuix/pickerwidget/date/Calendar;

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lmiuix/appcompat/app/DatePickerDialog;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide p2

    const/16 v0, 0x3780

    invoke-static {p1, p2, p3, v0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {p0, p2}, Lmiuix/pickerwidget/widget/DatePicker;->setLunarMode(Z)V

    return-void
.end method

.method public getDatePicker()Lmiuix/pickerwidget/widget/DatePicker;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    return-object p0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "miuix:year"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "miuix:month"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "miuix:day"

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 5
    iget-object v2, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    iget-object p0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mOnDateChangedListener:Lmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;

    invoke-virtual {v2, v0, v1, p1, p0}, Lmiuix/pickerwidget/widget/DatePicker;->init(IIILmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/DatePicker;->getYear()I

    move-result v1

    const-string v2, "miuix:year"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/DatePicker;->getMonth()I

    move-result v1

    const-string v2, "miuix:month"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget-object p0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DatePicker;->getDayOfMonth()I

    move-result p0

    const-string v1, "miuix:day"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setLunarMode(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mLunarModePanel:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lmiuix/appcompat/app/DatePickerDialog;->mTitleNeedsUpdate:Z

    return-void
.end method

.method public switchLunarState(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mLunarModeState:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/DatePicker;->setLunarMode(Z)V

    return-void
.end method

.method public updateDate(III)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/DatePickerDialog;->mDatePicker:Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {p0, p1, p2, p3}, Lmiuix/pickerwidget/widget/DatePicker;->updateDate(III)V

    return-void
.end method
