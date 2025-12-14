.class public final synthetic Lorg/chromium/components/signin/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/signin/c;->a:Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/signin/c;->a:Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;

    invoke-static {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;->f(Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;)V

    return-void
.end method
