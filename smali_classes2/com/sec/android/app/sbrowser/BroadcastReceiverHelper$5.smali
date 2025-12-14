.class Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackBroadcastReceiver$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/main_view/MainView;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper$5;->this$0:Lcom/sec/android/app/sbrowser/BroadcastReceiverHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateLangList()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->updateLangList(Z)V

    return-void
.end method
