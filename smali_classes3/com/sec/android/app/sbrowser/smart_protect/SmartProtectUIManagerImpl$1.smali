.class Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar$DismissCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;->showSuspiciousSiteWarningInfoBar(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;

.field final synthetic val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl$1;->this$0:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl$1;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl$1;->this$0:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;->c(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl$1;->this$0:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;->a(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl$1;->val$tab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl$1;->this$0:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;->a(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->removeEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    :cond_0
    return-void
.end method
