.class public final synthetic LOooO0O0/OooO0O0/OooO0O0/OooOo0/o00o0OOO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic OooO00o:LOooO0O0/OooO0O0/OooO0O0/OooOo0/o00o0OOO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0O0/OooO0O0/OooO0O0/OooOo0/o00o0OOO;

    invoke-direct {v0}, LOooO0O0/OooO0O0/OooO0O0/OooOo0/o00o0OOO;-><init>()V

    sput-object v0, LOooO0O0/OooO0O0/OooO0O0/OooOo0/o00o0OOO;->OooO00o:LOooO0O0/OooO0O0/OooO0O0/OooOo0/o00o0OOO;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->o00OO0oo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
