.class Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;->onAuthSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;->a(Lcom/sec/android/app/sbrowser/auth/intelligent/IntelligentAuthViewAdapter;)Lcom/sec/android/app/sbrowser/auth/AuthView;

    move-result-object p0

    const/16 v0, 0x10

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/auth/AuthView;->onAuthSuccess(I)V

    return-void
.end method
