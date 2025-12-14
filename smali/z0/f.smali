.class public abstract Lz0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Li0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lz0/e;->a:Lz0/e;

    new-instance v1, Li0/a;

    const v2, -0x67cddd26

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Li0/a;-><init>(IZLdb/b;)V

    sput-object v1, Lz0/f;->a:Li0/a;

    return-void
.end method
