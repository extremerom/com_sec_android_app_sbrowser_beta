.class Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScreenID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->r(Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
