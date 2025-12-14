.class Lorg/chromium/base/BuildInfo$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/BuildInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/chromium/base/BuildInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/chromium/base/BuildInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/base/BuildInfo;-><init>(I)V

    sput-object v0, Lorg/chromium/base/BuildInfo$Holder;->INSTANCE:Lorg/chromium/base/BuildInfo;

    return-void
.end method

.method public static bridge synthetic a()Lorg/chromium/base/BuildInfo;
    .locals 1

    sget-object v0, Lorg/chromium/base/BuildInfo$Holder;->INSTANCE:Lorg/chromium/base/BuildInfo;

    return-object v0
.end method
