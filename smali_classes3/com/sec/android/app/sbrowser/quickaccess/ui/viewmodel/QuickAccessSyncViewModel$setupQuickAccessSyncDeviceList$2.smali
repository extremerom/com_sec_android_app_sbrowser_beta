.class final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$2;
.super Ltb/a;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->setupQuickAccessSyncDeviceList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltb/a;",
        "Lsb/o;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$2;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$2;->INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ltb/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Lib/c;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$2;->invoke(Ljava/util/List;ILib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/util/List;ILib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ldb/j;",
            ">;I",
            "Lib/c<",
            "-",
            "Ldb/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->access$setupQuickAccessSyncDeviceList$lambda$11(Ljava/util/List;ILib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
