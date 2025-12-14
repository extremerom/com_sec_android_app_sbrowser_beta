.class public abstract LYa/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LR2/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lio/grpc/c;->c:Ljava/util/logging/Logger;

    new-instance v0, LR2/i;

    invoke-direct {v0}, LR2/i;-><init>()V

    sput-object v0, LYa/c;->a:LR2/i;

    return-void
.end method
