.class public abstract LR/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La0/I;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, LR/o;->c:LR/o;

    sget-object v1, La0/V;->f:La0/V;

    new-instance v2, La0/I;

    invoke-direct {v2, v1, v0}, La0/I;-><init>(La0/A0;Lsb/a;)V

    sput-object v2, LR/y;->a:La0/I;

    return-void
.end method
