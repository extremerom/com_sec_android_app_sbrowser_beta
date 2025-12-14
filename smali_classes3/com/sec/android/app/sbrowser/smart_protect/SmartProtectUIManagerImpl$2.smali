.class Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;


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


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl$2;->this$0:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDidCommitProvisionalLoadForFrame(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;JZLjava/lang/String;I)V
    .locals 0

    const/high16 p1, 0x40000000    # 2.0f

    and-int/2addr p1, p6

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl$2;->this$0:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;->b(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;)Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl$2;->this$0:Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;->b(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;)Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;->hide()V

    :cond_0
    return-void
.end method
