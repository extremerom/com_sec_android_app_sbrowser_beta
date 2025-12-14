.class Lorg/chromium/components/signin/AccountManagerFacadeProvider$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/signin/AccountManagerFacadeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/chromium/components/signin/AccountManagerFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/chromium/components/signin/AccountManagerDelegate;

    invoke-static {v0}, Lorg/chromium/base/ServiceLoaderUtil;->maybeCreate(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/signin/AccountManagerDelegate;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/components/signin/SystemAccountManagerDelegate;

    invoke-direct {v0}, Lorg/chromium/components/signin/SystemAccountManagerDelegate;-><init>()V

    :cond_0
    new-instance v1, Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-direct {v1, v0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;-><init>(Lorg/chromium/components/signin/AccountManagerDelegate;)V

    sput-object v1, Lorg/chromium/components/signin/AccountManagerFacadeProvider$Holder;->INSTANCE:Lorg/chromium/components/signin/AccountManagerFacade;

    return-void
.end method

.method public static bridge synthetic a()Lorg/chromium/components/signin/AccountManagerFacade;
    .locals 1

    sget-object v0, Lorg/chromium/components/signin/AccountManagerFacadeProvider$Holder;->INSTANCE:Lorg/chromium/components/signin/AccountManagerFacade;

    return-object v0
.end method
