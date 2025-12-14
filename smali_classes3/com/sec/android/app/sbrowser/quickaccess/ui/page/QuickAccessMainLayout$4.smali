.class synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$android$app$sbrowser$quickaccess$ui$base$QuickAccessKeyEventHandler$HandlerResult:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->values()[Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$4;->$SwitchMap$com$sec$android$app$sbrowser$quickaccess$ui$base$QuickAccessKeyEventHandler$HandlerResult:[I

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->EXIT_EDIT_MODE_AND_APPLY_CHANGES:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$4;->$SwitchMap$com$sec$android$app$sbrowser$quickaccess$ui$base$QuickAccessKeyEventHandler$HandlerResult:[I

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->EXIT_EDIT_MODE_AND_TEAR_DOWN:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$4;->$SwitchMap$com$sec$android$app$sbrowser$quickaccess$ui$base$QuickAccessKeyEventHandler$HandlerResult:[I

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->DELETE_CHECKED_ITEMS:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout$4;->$SwitchMap$com$sec$android$app$sbrowser$quickaccess$ui$base$QuickAccessKeyEventHandler$HandlerResult:[I

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->SELECT_ALL_ITEMS:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
