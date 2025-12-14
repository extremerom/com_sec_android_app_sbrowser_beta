.class public final synthetic Lcom/sec/terrace/browser/webauth/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;

.field public final synthetic b:Lq5/a;

.field public final synthetic c:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;Lq5/a;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webauth/b;->a:Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;

    iput-object p2, p0, Lcom/sec/terrace/browser/webauth/b;->b:Lq5/a;

    iput-object p3, p0, Lcom/sec/terrace/browser/webauth/b;->c:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/webauth/b;->c:Landroid/app/Activity;

    check-cast p1, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sec/terrace/browser/webauth/b;->a:Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;

    iget-object p0, p0, Lcom/sec/terrace/browser/webauth/b;->b:Lq5/a;

    invoke-static {v1, p0, v0, p1}, Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;->a(Lcom/sec/terrace/browser/webauth/TinGoogleFidoCredentialRequest$1;Lq5/a;Landroid/app/Activity;Ljava/lang/Integer;)V

    return-void
.end method
