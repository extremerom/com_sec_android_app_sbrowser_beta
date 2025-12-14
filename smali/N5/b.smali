.class public abstract LN5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb5/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb5/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, LA5/v;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LA5/v;-><init>(I)V

    new-instance v2, Lb5/g;

    const-string v3, "SafetyNet.API"

    invoke-direct {v2, v3, v1, v0}, Lb5/g;-><init>(Ljava/lang/String;Lb5/a;Lb5/f;)V

    sput-object v2, LN5/b;->a:Lb5/g;

    return-void
.end method
