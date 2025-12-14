.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;
.implements LR5/e;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/i;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/i;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/i;->d:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/i;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/components/webauthn/Fido2CredentialRequest;[[BZLorg/chromium/components/webauthn/GetMatchingCredentialIdsResponseCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/i;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/i;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/i;->a:Z

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/i;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/i;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/i;->b:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/i;->a:Z

    invoke-static {v2, v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->l(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/lang/Boolean;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/i;->c:Ljava/lang/Object;

    check-cast v0, [[B

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/i;->a:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/i;->b:Ljava/lang/Object;

    check-cast v2, Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/i;->d:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/components/webauthn/GetMatchingCredentialIdsResponseCallback;

    invoke-static {v2, v0, v1, p0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->d(Lorg/chromium/components/webauthn/Fido2CredentialRequest;[[BZLorg/chromium/components/webauthn/GetMatchingCredentialIdsResponseCallback;Ljava/util/List;)V

    return-void
.end method
