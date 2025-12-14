.class public abstract LO5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LA5/v;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LA5/v;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LA5/v;-><init>(I)V

    sput-object v0, LO5/b;->a:LA5/v;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "profile"

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "email"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    return-void
.end method
