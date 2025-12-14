.class public final synthetic Lorg/chromium/components/signin/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/signin/AccountManagerFacade$ChildAccountStatusListener;


# instance fields
.field public final synthetic a:Lorg/chromium/components/signin/ChildAccountInfoFetcher;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/signin/ChildAccountInfoFetcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/signin/d;->a:Lorg/chromium/components/signin/ChildAccountInfoFetcher;

    return-void
.end method


# virtual methods
.method public final onStatusReady(ZLorg/chromium/components/signin/base/CoreAccountInfo;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/signin/d;->a:Lorg/chromium/components/signin/ChildAccountInfoFetcher;

    invoke-static {p0, p1, p2}, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->a(Lorg/chromium/components/signin/ChildAccountInfoFetcher;ZLorg/chromium/components/signin/base/CoreAccountInfo;)V

    return-void
.end method
