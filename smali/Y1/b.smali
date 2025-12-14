.class public abstract LY1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Li0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, LY1/a;->a:LY1/a;

    new-instance v1, Li0/a;

    const v2, 0x214e3371

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Li0/a;-><init>(IZLdb/b;)V

    sput-object v1, LY1/b;->a:Li0/a;

    return-void
.end method
