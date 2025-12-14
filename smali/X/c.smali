.class public abstract LX/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LA0/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LX/b;->a:LX/b;

    new-instance v1, LA0/g;

    invoke-direct {v1, v0}, LA0/g;-><init>(Lsb/a;)V

    sput-object v1, LX/c;->a:LA0/g;

    return-void
.end method
