.class public abstract Lhc/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LKc/j;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LKc/j;

    const-string v1, "[^\\p{L}\\p{Digit}]"

    invoke-direct {v0, v1}, LKc/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhc/g;->a:LKc/j;

    const-string v0, "$context_receiver"

    sput-object v0, Lhc/g;->b:Ljava/lang/String;

    return-void
.end method
