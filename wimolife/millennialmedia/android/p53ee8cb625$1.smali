.class Lcom/millennialmedia/android/p53ee8cb625$1;
.super Ljava/lang/Object;
.source "p53ee8cb625.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/p53ee8cb625;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/p53ee8cb625;

.field final synthetic val$button:Lcom/millennialmedia/android/VideoImage;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/p53ee8cb625;Lcom/millennialmedia/android/VideoImage;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/millennialmedia/android/p53ee8cb625$1;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    iput-object p2, p0, Lcom/millennialmedia/android/p53ee8cb625$1;->val$button:Lcom/millennialmedia/android/VideoImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625$1;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    iget-object v1, p0, Lcom/millennialmedia/android/p53ee8cb625$1;->val$button:Lcom/millennialmedia/android/VideoImage;

    iget-object v1, v1, Lcom/millennialmedia/android/VideoImage;->linkUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/millennialmedia/android/p53ee8cb625;->access$000(Lcom/millennialmedia/android/p53ee8cb625;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/millennialmedia/android/p53ee8cb625$1;->this$0:Lcom/millennialmedia/android/p53ee8cb625;

    iget-object v1, p0, Lcom/millennialmedia/android/p53ee8cb625$1;->val$button:Lcom/millennialmedia/android/VideoImage;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/p53ee8cb625;->logButtonEvent(Lcom/millennialmedia/android/VideoImage;)V

    .line 238
    return-void
.end method
