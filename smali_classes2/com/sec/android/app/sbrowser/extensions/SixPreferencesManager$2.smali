.class Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$PrefRefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->initSixPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIconDownloaded(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->h(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;Ljava/lang/String;)V

    return-void
.end method

.method public refreshSixPreferences()V
    .locals 2

    const-string v0, "SixPreferencesManager"

    const-string v1, "refreshSixPreferences running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->updatePreferences()V

    return-void
.end method
