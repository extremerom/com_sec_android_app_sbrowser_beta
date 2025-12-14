.class Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper$2;
.super Lcom/sec/android/app/sbrowser/customtabs/CustomTabTabObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->startObserving()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTabObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaviconUpdated()V
    .locals 2

    const-string v0, "CustomTabTaskDescriptionHelper"

    const-string v1, "[onFaviconUpdated]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->c(Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;)V

    return-void
.end method
