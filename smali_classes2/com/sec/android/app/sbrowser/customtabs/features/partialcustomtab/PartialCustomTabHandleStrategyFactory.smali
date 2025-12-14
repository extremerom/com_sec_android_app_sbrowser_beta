.class public Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategyFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(ILandroid/content/Context;Ljava/util/function/BooleanSupplier;Ljava/util/function/Supplier;Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategy$DragEventCallback;)Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$HandleStrategy;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategy$DragEventCallback;",
            ")",
            "Lcom/sec/android/app/sbrowser/customtabs/features/toolbar/CustomTabToolbar$HandleStrategy;"
        }
    .end annotation

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x2

    const/4 v0, 0x0

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategy;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategy;-><init>(Landroid/content/Context;Ljava/util/function/BooleanSupplier;Ljava/util/function/Supplier;Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabHandleStrategy$DragEventCallback;)V

    :cond_1
    :goto_0
    return-object v0
.end method
