.class Lorg/chromium/mojo/system/impl/CoreImpl$LazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/system/impl/CoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/chromium/mojo/system/Core;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/chromium/mojo/system/impl/CoreImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/mojo/system/impl/CoreImpl;-><init>(I)V

    sput-object v0, Lorg/chromium/mojo/system/impl/CoreImpl$LazyHolder;->INSTANCE:Lorg/chromium/mojo/system/Core;

    return-void
.end method

.method public static bridge synthetic a()Lorg/chromium/mojo/system/Core;
    .locals 1

    sget-object v0, Lorg/chromium/mojo/system/impl/CoreImpl$LazyHolder;->INSTANCE:Lorg/chromium/mojo/system/Core;

    return-object v0
.end method
