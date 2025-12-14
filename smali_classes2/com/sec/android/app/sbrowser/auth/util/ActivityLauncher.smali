.class public Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;,
        Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;
    }
.end annotation


# static fields
.field private static final sCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;->sCallbacks:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static bridge synthetic a()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;->sCallbacks:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public startActivityForResult(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;->newInstance(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;)Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$ActivityResultListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
