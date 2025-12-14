.class Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->createAndShowDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity$4;->this$0:Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity$4;->this$0:Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationActivity;->finish()V

    return-void
.end method
