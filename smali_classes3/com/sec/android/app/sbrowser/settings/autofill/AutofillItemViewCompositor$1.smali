.class Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->bindViewHolder(Landroidx/recyclerview/widget/h1;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;

.field final synthetic val$viewHolder:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$1;->val$viewHolder:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$1;->this$0:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor$1;->val$viewHolder:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;

    invoke-static {p1, p0, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;->a(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewCompositor;Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemViewHolder;Z)V

    return-void
.end method
