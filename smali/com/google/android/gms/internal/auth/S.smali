.class public abstract Lcom/google/android/gms/internal/auth/S;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/auth/P;

.field public static final b:Lcom/google/android/gms/internal/auth/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/auth/P;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/S;->a:Lcom/google/android/gms/internal/auth/P;

    new-instance v0, Lcom/google/android/gms/internal/auth/Q;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/S;->b:Lcom/google/android/gms/internal/auth/Q;

    return-void
.end method


# virtual methods
.method public abstract a(JLjava/lang/Object;)V
.end method

.method public abstract b(Lcom/google/android/gms/internal/auth/I;Lcom/google/android/gms/internal/auth/I;J)V
.end method
