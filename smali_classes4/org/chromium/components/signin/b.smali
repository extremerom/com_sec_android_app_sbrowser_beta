.class public final synthetic Lorg/chromium/components/signin/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/signin/AccountsChangeObserver;


# instance fields
.field public final synthetic a:Lorg/chromium/components/signin/AccountManagerFacadeImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/signin/b;->a:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    return-void
.end method


# virtual methods
.method public final onCoreAccountInfosChanged()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/signin/b;->a:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->b(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)V

    return-void
.end method
